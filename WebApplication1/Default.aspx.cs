using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Net.Http;
using System.Text;
using Newtonsoft.Json.Linq;
using Microsoft.CognitiveServices.Speech;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {

        private static readonly string key = "1915c0e5c5e241399644214d21effbc6";
        private static readonly string endpoint = "https://api.cognitive.microsofttranslator.com";


        // location, also known as region.
        // required if you're using a multi-service or regional (not global) resource. It can be found in the Azure portal on the Keys and Endpoint page.
        private static readonly string location = "eastus";


        // This example requires environment variables named "SPEECH_KEY" and "SPEECH_REGION"
       // private static string speechKey = "cafbaf25ce5a44ba8cd8ecd6c2ced04e";
       // private static string speechRegion = "eastus";

        static void OutputSpeechSynthesisResult(SpeechSynthesisResult speechSynthesisResult, string text)
        {
            switch (speechSynthesisResult.Reason)
            {
                case ResultReason.SynthesizingAudioCompleted:
                    Console.WriteLine($"Speech synthesized for text: [{text}]");
                    break;
                case ResultReason.Canceled:
                    var cancellation = SpeechSynthesisCancellationDetails.FromResult(speechSynthesisResult);
                    Console.WriteLine($"CANCELED: Reason={cancellation.Reason}");

                    if (cancellation.Reason == CancellationReason.Error)
                    {
                        Console.WriteLine($"CANCELED: ErrorCode={cancellation.ErrorCode}");
                        Console.WriteLine($"CANCELED: ErrorDetails=[{cancellation.ErrorDetails}]");
                        Console.WriteLine($"CANCELED: Did you set the speech resource key and region values?");
                    }
                    break;
                default:
                    break;
            }
        }

        private async static void speech(string text)
        {
            var speechConfig = SpeechConfig.FromSubscription("cafbaf25ce5a44ba8cd8ecd6c2ced04e", "eastus");

            // The language of the voice that speaks.
            //speechConfig.SpeechSynthesisVoiceName = "en-US-JennyNeural";
            speechConfig.SpeechSynthesisVoiceName = "de-DE-RalfNeural";

            using (var speechSynthesizer = new SpeechSynthesizer(speechConfig))
            {
                var speechSynthesisResult = await speechSynthesizer.SpeakTextAsync(text);
                OutputSpeechSynthesisResult(speechSynthesisResult, text);
            }
        }


        private async void translate()
        {
            // Input and output languages are defined as parameters.
            string from = DropDownList1.SelectedValue;
            string to = DropDownList2.SelectedValue;
            string route = "/translate?api-version=3.0&from=" + from + "&to=" + to;
            string textToTranslate = TextBox1.Text;
            object[] body = new object[] { new { Text = textToTranslate } };
            var requestBody = JsonConvert.SerializeObject(body);

            using (var client = new HttpClient())
            using (var request = new HttpRequestMessage())
            {
                // Build the request.
                request.Method = HttpMethod.Post;
                request.RequestUri = new Uri(endpoint + route);
                request.Content = new StringContent(requestBody, Encoding.UTF8, "application/json");
                request.Headers.Add("Ocp-Apim-Subscription-Key", key);
                // location required if you're using a multi-service or regional (not global) resource.
                request.Headers.Add("Ocp-Apim-Subscription-Region", location);

                // Send the request and get response.
                HttpResponseMessage response = await client.SendAsync(request).ConfigureAwait(false);
                // Read response as a string.
                string result = await response.Content.ReadAsStringAsync();

                int start = 27;
                int end = result.Length - 15 - start;
                string trimmedtext = result.Substring(start, end);


                Label1.Text = trimmedtext;

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            translate();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            translate();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            speech(Label1.Text);
        }
    }
}