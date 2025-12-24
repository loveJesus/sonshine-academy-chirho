// For God so loved the world that he gave his only begotten Son,
// that whosoever believeth in him should not perish, but have everlasting life.
// John 3:16 (KJV)

import { Resend } from 'resend';

export interface EmailConfigChirho {
	apiKey: string;
	fromEmail: string;
	fromName: string;
}

export function getEmailConfigChirho(env: Record<string, unknown>): EmailConfigChirho | null {
	const apiKeyChirho = env.RESEND_API_KEY as string | undefined;

	if (!apiKeyChirho) {
		return null;
	}

	return {
		apiKey: apiKeyChirho,
		fromEmail: (env.EMAIL_FROM as string) || 'noreply@sonshinecodingschool.org',
		fromName: (env.EMAIL_FROM_NAME as string) || 'Sonshine Christian Code Academy'
	};
}

export function createEmailClientChirho(configChirho: EmailConfigChirho): Resend {
	return new Resend(configChirho.apiKey);
}

// Email Templates
export function getWelcomeEmailChirho(usernameChirho: string): { subject: string; html: string } {
	return {
		subject: 'Welcome to Sonshine Christian Code Academy! 🌟',
		html: `
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body style="font-family: system-ui, -apple-system, sans-serif; line-height: 1.6; color: #1e293b; max-width: 600px; margin: 0 auto; padding: 20px;">
  <div style="text-align: center; margin-bottom: 30px;">
    <span style="font-size: 48px;">☀️</span>
    <h1 style="color: #0f172a; margin: 10px 0;">Welcome to Sonshine!</h1>
  </div>

  <p>Hi <strong>${usernameChirho}</strong>,</p>

  <p>We're so excited to have you join our community of learners! At Sonshine Christian Code Academy, we believe that coding is a gift from God that can be used to serve others and glorify Him.</p>

  <div style="background: linear-gradient(135deg, #f59e0b, #f97316); border-radius: 12px; padding: 20px; margin: 20px 0; color: white;">
    <h2 style="margin: 0 0 10px 0;">🚀 Here's what you can do now:</h2>
    <ul style="margin: 0; padding-left: 20px;">
      <li>Explore our <strong>131 coding quests</strong></li>
      <li>Earn <strong>Quest Coins</strong> as you learn</li>
      <li>Join our <strong>Discord community</strong></li>
      <li>Work through our <strong>main projects</strong></li>
    </ul>
  </div>

  <p style="text-align: center;">
    <a href="https://sonshinecodingschool.org/dashboard-chirho" style="display: inline-block; background: #0f172a; color: white; padding: 12px 24px; border-radius: 8px; text-decoration: none; font-weight: 600;">
      Go to Your Dashboard
    </a>
  </p>

  <div style="background: #f8fafc; border-left: 4px solid #f59e0b; padding: 15px; margin: 20px 0; font-style: italic;">
    "For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life." — John 3:16
  </div>

  <p>If you have any questions, just reply to this email or join our Discord community.</p>

  <p>God bless you on your coding journey!</p>

  <p style="color: #64748b; font-size: 14px; margin-top: 30px; text-align: center;">
    — The Sonshine Team<br>
    <strong>JESUS CHRIST IS LORD</strong>
  </p>
</body>
</html>
`
	};
}

export function getQuestCompletionEmailChirho(
	usernameChirho: string,
	questTitleChirho: string,
	coinsEarnedChirho: number,
	totalCoinsChirho: number
): { subject: string; html: string } {
	return {
		subject: `🎉 Quest Complete: ${questTitleChirho}`,
		html: `
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
</head>
<body style="font-family: system-ui, -apple-system, sans-serif; line-height: 1.6; color: #1e293b; max-width: 600px; margin: 0 auto; padding: 20px;">
  <div style="text-align: center; margin-bottom: 30px;">
    <span style="font-size: 48px;">🏆</span>
    <h1 style="color: #0f172a; margin: 10px 0;">Quest Complete!</h1>
  </div>

  <p>Great job, <strong>${usernameChirho}</strong>!</p>

  <p>You've successfully completed the quest: <strong>${questTitleChirho}</strong></p>

  <div style="background: linear-gradient(135deg, #f59e0b, #f97316); border-radius: 12px; padding: 20px; margin: 20px 0; color: white; text-align: center;">
    <div style="font-size: 24px; font-weight: bold;">🪙 +${coinsEarnedChirho} Quest Coins!</div>
    <div style="font-size: 14px; opacity: 0.9;">Total balance: ${totalCoinsChirho} coins</div>
  </div>

  <p style="text-align: center;">
    <a href="https://sonshinecodingschool.org/quests-chirho" style="display: inline-block; background: #0f172a; color: white; padding: 12px 24px; border-radius: 8px; text-decoration: none; font-weight: 600;">
      Continue to Next Quest
    </a>
  </p>

  <p style="color: #64748b; font-size: 14px; margin-top: 30px; text-align: center;">
    Keep up the great work!<br>
    — The Sonshine Team
  </p>
</body>
</html>
`
	};
}

export async function sendWelcomeEmailChirho(
	configChirho: EmailConfigChirho,
	toEmailChirho: string,
	usernameChirho: string
): Promise<boolean> {
	try {
		const resendChirho = createEmailClientChirho(configChirho);
		const templateChirho = getWelcomeEmailChirho(usernameChirho);

		await resendChirho.emails.send({
			from: `${configChirho.fromName} <${configChirho.fromEmail}>`,
			to: toEmailChirho,
			subject: templateChirho.subject,
			html: templateChirho.html
		});

		return true;
	} catch (errorChirho) {
		console.error('Failed to send welcome email:', errorChirho);
		return false;
	}
}

export async function sendQuestCompletionEmailChirho(
	configChirho: EmailConfigChirho,
	toEmailChirho: string,
	usernameChirho: string,
	questTitleChirho: string,
	coinsEarnedChirho: number,
	totalCoinsChirho: number
): Promise<boolean> {
	try {
		const resendChirho = createEmailClientChirho(configChirho);
		const templateChirho = getQuestCompletionEmailChirho(
			usernameChirho,
			questTitleChirho,
			coinsEarnedChirho,
			totalCoinsChirho
		);

		await resendChirho.emails.send({
			from: `${configChirho.fromName} <${configChirho.fromEmail}>`,
			to: toEmailChirho,
			subject: templateChirho.subject,
			html: templateChirho.html
		});

		return true;
	} catch (errorChirho) {
		console.error('Failed to send quest completion email:', errorChirho);
		return false;
	}
}
