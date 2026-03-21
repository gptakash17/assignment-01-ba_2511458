## Vector DB Use Case

A traditional keyword-based database is not enough for this task. It only searches for exact words. If a lawyer searches for “termination clauses,” the system will only find text with those exact words. But legal contracts often use different phrases for the same meaning, like “end of agreement” or “contract cancellation terms.” Because of this, keyword search can miss important information.

A vector database works differently. It understands the meaning of the text, not just the words. It converts both the contract text and the user’s question into numbers (called embeddings) that represent their meaning. This helps the system find similar ideas, even if the wording is different.

In this system, the long contracts are first divided into smaller parts and converted into embeddings. When a lawyer asks a question, it is also converted into an embedding. The system then compares it with stored data and finds the most similar sections.

So, a vector database is important because it gives more accurate results and helps lawyers quickly find the information they need.