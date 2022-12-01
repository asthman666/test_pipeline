using Microsoft.AspNetCore.Mvc;

namespace EnglishSentence.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class EnglishSentenceController : ControllerBase
    {
        private static readonly string[] EnglishSentences = new[]
        {
            "Work for something because it is good, not just because it stands a chance to succeed.",
            "The only limit to the height of your achievements is the reach of your dreams and your willingness to work hard for them.",
            "A leader has the vision and conviction that a dream can be achieved. He inspires the power and energy to get it done.",
            "It is our attitude at the beginning of a difficult task which, more than anything else, will affect its successful outcome.",
            "It’s not that I’m so smart, it’s just that I stay with problems longer.",
            "Optimists always picture themselves accomplishing their goals.",
            "I’ve always had confidence. It came because I have lots of initiative. I wanted to make something of myself."
        };

        private readonly ILogger<EnglishSentenceController> _logger;

        public EnglishSentenceController(ILogger<EnglishSentenceController> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "GetEnglishSentence")]
        public String Get()
        {
            return EnglishSentences[new Random().Next(0, EnglishSentences.Length)];
        }
    }
}