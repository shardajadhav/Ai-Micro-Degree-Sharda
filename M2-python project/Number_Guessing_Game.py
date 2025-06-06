from tkinter import messagebox
import tkinter as tk
import random

class GuessingGameApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Number Guessing Game")
        self.root.geometry("400x250")
        self.secret_number = random.randint(1, 100)
        self.attempts = 0

        self.title_label = tk.Label(root, text="🎯 Guess a number between 1 and 100", font=("Helvetica", 14))
        self.title_label.pack(pady=10)

        self.entry = tk.Entry(root, font=("Helvetica", 14))
        self.entry.pack(pady=5)

        self.result_label = tk.Label(root, text="", font=("Helvetica", 12))
        self.result_label.pack(pady=5)

        self.guess_button = tk.Button(root, text="Submit Guess", command=self.check_guess, font=("Helvetica", 12))
        self.guess_button.pack(pady=10)

        self.reset_button = tk.Button(root, text="Reset Game", command=self.reset_game, font=("Helvetica", 10))
        self.reset_button.pack(pady=5)

    def check_guess(self):
        try:
            guess = int(self.entry.get())
            self.attempts += 1

            if guess < 1 or guess > 100:
                self.result_label.config(text="⚠️ Please guess between 1 and 100.")
            elif guess < self.secret_number:
                self.result_label.config(text="📉 Too low!")
            elif guess > self.secret_number:
                self.result_label.config(text="📈 Too high!")
            else:
                messagebox.showinfo("🎉 Correct!", f"You guessed the number in {self.attempts} attempts!")
                self.reset_game()
        except ValueError:
            self.result_label.config(text="❌ Please enter a valid number.")

    def reset_game(self):
        self.secret_number = random.randint(1, 100)
        self.attempts = 0
        self.entry.delete(0, tk.END)
        self.result_label.config(text="")

if __name__ == "__main__":
    root = tk.Tk()
    app = GuessingGameApp(root)
    root.mainloop()
