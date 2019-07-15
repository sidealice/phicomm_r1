.class public Lcom/unisound/vui/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/unisound/client/SpeechSynthesizerListener;

.field private final c:Lcom/unisound/client/SpeechSynthesizer;

.field private d:Lcom/unisound/vui/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/c$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/c$1;-><init>(Lcom/unisound/vui/c;)V

    iput-object v0, p0, Lcom/unisound/vui/c;->b:Lcom/unisound/client/SpeechSynthesizerListener;

    new-instance v0, Lcom/unisound/client/SpeechSynthesizer;

    invoke-direct {v0, p1, p2, p3}, Lcom/unisound/client/SpeechSynthesizer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    iget-object v1, p0, Lcom/unisound/vui/c;->b:Lcom/unisound/client/SpeechSynthesizerListener;

    invoke-virtual {v0, v1}, Lcom/unisound/client/SpeechSynthesizer;->setTTSListener(Lcom/unisound/client/SpeechSynthesizerListener;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/vui/c;)Lcom/unisound/vui/d;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->d:Lcom/unisound/vui/d;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "lingling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lzl"

    :goto_0
    iget-object v1, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    const/16 v2, 0x7d5

    invoke-virtual {v1, v2, v0}, Lcom/unisound/client/SpeechSynthesizer;->setOption(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "tangtang"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tangtang"

    goto :goto_0

    :cond_1
    const-string v0, "tiantian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "boy"

    goto :goto_0

    :cond_2
    const-string v0, "xiaofeng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "xiaoming"

    goto :goto_0

    :cond_3
    const-string v0, "xiaowen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "xiaoli"

    goto :goto_0

    :cond_4
    const-string v0, "xuanxuan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sweet"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/unisound/vui/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local tts speaker name : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is invalid, \'sweet\' tts speaker is set for online"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sweet"

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/unisound/vui/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unisound/vui/c;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".*[a-zA-Z]{2,}.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<PCM>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<WAV>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechSynthesizer;->init(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechSynthesizer;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0x7ef

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f0

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/unisound/vui/c;->a:Ljava/lang/String;

    const-string v1, "Setting local tts speaker, switch online tts speaker also"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/c;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/SpeechSynthesizer;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/SpeechSynthesizer;->release(ILjava/lang/String;)I

    return-void
.end method

.method public a(Lcom/unisound/vui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/c;->d:Lcom/unisound/vui/d;

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechSynthesizer;->playBuffer([B)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/unisound/client/SpeechSynthesizer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/unisound/client/SpeechSynthesizer;->cancel()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x7e4

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0, v4}, Lcom/unisound/client/SpeechSynthesizer;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/unisound/vui/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ttsServiceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unisound/vui/c;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/unisound/client/SpeechSynthesizer;->setOption(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechSynthesizer;->playText(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/unisound/client/SpeechSynthesizer;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/c;->c:Lcom/unisound/client/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/unisound/client/SpeechSynthesizer;->stop()V

    return-void
.end method
