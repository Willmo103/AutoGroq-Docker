# AutoGroqDocker

Docker image for running the AutoGroq application Locally.

## **ATTENTION!**: This repository is a fork of the original [AutoGroq](https://github.com/jgravelle/AutoGroq) repository

The main changes made to the original repository are:
    - Added a Dockerfile to run the application in a container
    - Modified the 'config.py' file to use environment variables for the `GROQ_API_KEY`, `OPENAI_API_KEY`, and the `AUTOGROQ_DB_PATH` variables. The API keys are optional as the Web UI will still work without them, but the `AUTOGROQ_DB_PATH` is required for the bulk upload feature to work. The `AUTOGROQ_DB_PATH` should be the path to the `database.sqlite` file in the Autogen Studio directory, and set as a volume in the docker run command.

## **How to use the Docker image**

Pull the image from Docker Hub:

```bash
  docker pull willmo103/autogroqdocker
```

Run the image with the following command:

```bash
  docker run -d -p 8501:8501\
  -e GROQ_API_KEY=YOUR_GROQ_API_KEY\ # Optional
  -e OPENAI_API_KEY=YOUR_OPENAI_API_KEY\ # Optional
  -e AUTOGROQ_DB_PATH=/path/to/autogen/database.sqlite\
  -v /path/to/autogen/database.sqlite:/path/to/autogen/database.sqlite\
  --name autogroq\
  willmo103/autogroqdocker
```

Note: only use one or the other of the `GROQ_API_KEY` and `OPENAI_API_KEY` environment variables, or neither. The `AUTOGROQ_DB_PATH` is required for the bulk upload feature to work.

**Orignal README.md content below:**

## ONE-CLICK, BULK FILE UPLOAD TO AUTOGEN™

You made a dozen agents, each with two or three skills-- that's a LOT of clicking to import them one-by-one into Autogen.  Not any more!  Configure AutoGroq™ with the path to your Autogen Studio database.sqlite file, and you can import all 16 of those files with a single click!

## SUPPORT FOR EVERY LLM ON THE PLANET ##

...SORT OF!  We've got Groq, ChatGPT, and Ollama support.  I'm working on LM Studio as you read this.
Look at the provider model in the code to see how to make your own.  This was one of the most requested features.
I sincerely hope you like it.

## The PDF file

...contains all the code for this project.  It's handy for uploading to Claude.AI or ChatGPT if you want to make your own modifications.
I create those sorts of PDFs with my PyToPdf utility:  <https://github.com/jgravelle/PyToPdf>

## What's new?  In a word:  SKILLS

**Add Your Own Skills!**  Drop a valid skill file into the skills folder and it will be automatically added to the list of available skills.  Your agents will be able to use your skills to perform whatever tasks you've built for them!

**INCLUDED SKILLS!  WEBSITE READING AND IMAGE GENERATION!**  Sort of!  When editing agents, you can now add 'skills' to them, like 'website reading' or 'image generation'.  These don't actually do anything in AutoGroq™ itself, but in Autogen, those agents should be able to actually perform tasks like summarizing websites or generating images from prompts.

**What the heck is...**

# AutoGroq?

It's how I wish Autogen worked:  quickly, simply, and automatically.  In the time it takes you to read this file, AutoGroq could have made dozens (if not hundreds) of specialized Autogen agents for you!

![image](https://github.com/jgravelle/AutoGroq/assets/3400540/0462400b-5584-4ffa-afc4-cd96eed8da77)

**FREE, WORKING, HANDS-ON LIVE DEMO:**  <https://autogroq.streamlit.app/>

**UPDATED** video tutorial:  <https://www.youtube.com/watch?v=JkYzuL8V_4g>

Autogroq creates your team of AutoGen compatible agent assistants AND workflows on the fly.  Just type in your request! You can test your agents before exporting them to AutoGen and CrewAI.

**AutoGroq** is an AI-powered conversational assistant designed to revolutionize the way users interact with AI tools. Built with the goal of addressing the limitations of existing solutions, AutoGroq offers a user-friendly, powerful, and configuration-free experience. Our platform focuses on providing immediate and relevant assistance by automatically generating expert agents tailored to help you with any question, problem, or project, regardless of its complexity.

## Key Features

- **Dynamic Expert Agent Generation**: AutoGroq's core functionality lies in its ability to dynamically create expert agents specialized in various domains or topics, ensuring you receive the most relevant support for your inquiries.
- **Dynamic Workflow Generation**: Watch the video.  With Autogroq, you're about ten minutes away from having a custom team of experts hammering out a project for you.  But don't take my word for it.  Try it yourself!
- **Natural Conversation Flow**: Engage in intuitive and contextually aware conversations with AutoGroq's expert agents, facilitating a seamless exchange of information.
- **Code Snippet Extraction**: AutoGroq intelligently extracts and presents code snippets within a dedicated "Whiteboard" section, making it convenient to reference, copy, or modify code during your interaction.
- **Flexible Agent Management**: Customize your panel of expert agents according to your evolving project needs. Add new agents, modify their expertise, or remove them as required.
- **Advanced Prompt Rephrasing**: AutoGroq employs sophisticated natural language processing techniques to rephrase user inputs, enhancing clarity and ensuring accurate responses from expert agents.

## Getting Started

Experience AutoGroq's capabilities firsthand by accessing our online beta version: <https://autogroq.streamlit.app/>

Please note that AutoGroq is currently under active development, and you may encounter occasional instability as we continue to refine our platform.

Or install it locally:

Here's a step-by-step guide on how to install and set up AutoGroq based on the provided codebase:

## Prerequisites

Python 3.x installed on your system
An API key for the Groq API (replace the placeholder in the code with your actual API key)

Clone the AutoGroq repository or download the source code files.
Open a terminal or command prompt and navigate to the AutoGroq project directory.
Create a virtual environment (optional but recommended):
python -m venv autogroq_venv

## Activate the virtual environment

For Windows:
autogroq_venv\Scripts\activate

For macOS and Linux:
source autogroq_venv/bin/activate

## Install the required dependencies

pip install -r requirements.txt

Set up the necessary environment variables:

Replace the placeholder API key in the code with your actual Groq API key.
Set any other required environment variables mentioned in the code.

## Run the AutoGroq application

streamlit run AutoGroq/main.py

The application will open in your default web browser. If it doesn't open automatically, you can access it by navigating to <http://localhost:8501> in your browser.
Enter your request in the "Enter your request" text input field and press Enter or click outside the field to trigger the processing.
AutoGroq will generate agents and create workflow files based on your request. The generated files will be available for download as ZIP archives.
You can interact with the generated agents using the provided user interface. Enter additional input, view the discussion and whiteboard, and reset the application if needed.
To exit the application, stop the Streamlit server by pressing Ctrl+C in the terminal or command prompt where you started the application.

## Note

Make sure you have the necessary permissions to install packages and run the application. If you encounter any issues during the installation or setup process, please refer to the troubleshooting guide or seek further assistance.
That's it! You should now have AutoGroq installed and ready to use on your system. Enjoy exploring and utilizing the powerful features of AutoGroq for your projects.

## How It Works

1. **Initiation**: Begin by entering your query or request in the designated input area.
2. **Engagement**: Click the "Begin" button to initiate the interaction. AutoGroq will rephrase your request and generate the appropriate expert agents.
3. **Interaction**: Select an expert agent to receive specialized assistance tailored to your needs.
4. **Dialogue**: Continue the conversation by providing additional input or context as required, guiding the flow of information.
5. **Review**: The "Discussion" section will display your dialogue history, while the "Whiteboard" section will showcase any extracted code snippets.
6. **Reset**: Use the "Reset" button to clear the current conversation and start a new one whenever needed.

## AutoGroq Architecture

The AutoGroq codebase is structured into the following main components:

- `main.py`: The core Streamlit application responsible for managing the user interface and user interactions.
- `auto_groq_utils.py`: A utility module containing functions for API interactions, prompt refinement, code extraction, and agent management.
- `agents_management.py`: A module dedicated to the lifecycle management of expert agents, including creation, modification, and deletion.

AutoGroq leverages the Streamlit library and integrates with various APIs to enable natural language processing, code extraction, and dynamic agent generation.

## Contributing

We value your feedback and contributions in shaping the future of AutoGroq. If you encounter any issues or have ideas for new features, please share them with us on our GitHub repository.

## License

AutoGroq is proudly open-source and released under the [MIT License](https://opensource.org/licenses/MIT).

Thank you for choosing AutoGroq as your AI-powered conversational assistant. We are committed to redefining the boundaries of what AI can achieve and empowering you to tackle any question, problem, or project with ease and efficiency.
