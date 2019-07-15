.class public Lcom/unisound/client/SpeechSynthesizer;
.super Lcom/unisound/sdk/az;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/az;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/az;->cancel()I

    move-result v0

    return v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/az;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/az;->getStatus()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/az;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/az;->init(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/az;->pause()V

    return-void
.end method

.method public playBuffer([B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/az;->playBuffer([B)V

    return-void
.end method

.method public playSynWav()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/az;->playSynWav()V

    return-void
.end method

.method public playText(Ljava/lang/String;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/az;->playText(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public release(ILjava/lang/String;)I
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/az;->release(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/az;->resume()V

    return-void
.end method

.method public setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/az;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result v0

    return v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/az;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setTTSListener(Lcom/unisound/client/SpeechSynthesizerListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/az;->setTTSListener(Lcom/unisound/client/SpeechSynthesizerListener;)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/az;->stop()V

    return-void
.end method

.method public synthesizeText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/az;->synthesizeText(Ljava/lang/String;)V

    return-void
.end method
