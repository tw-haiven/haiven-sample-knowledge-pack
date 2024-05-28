## Brainstorming prompts

These are prompts that get the AI to ask the user questions. If you want to add your own, use the [user_story.md](user_story.md) one as an example, in particular use the `<Thought>`, `<Question>` and `<Answer>` pseudo-tags, as the application will be using them to help parse the results.

Note that these prompts require models that support stop sequences in their API. Also, not all models are great at this type of "reasoning", so you may get mixed results depending on which model you use. For more information about the implementation of the "Brainstorming" tab, refer to `[chats.py](https://github.com/tw-haiven/haiven/blob/main/app/shared/chats.py)` and look for `Q_A_Chat`.