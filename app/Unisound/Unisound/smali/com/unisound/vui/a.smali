.class public Lcom/unisound/vui/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/client/SpeechUnderstanderListener;

.field private final b:Lcom/unisound/client/SpeechUnderstander;

.field private final c:Landroid/content/Context;

.field private d:Lcom/unisound/vui/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/a$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/a$1;-><init>(Lcom/unisound/vui/a;)V

    iput-object v0, p0, Lcom/unisound/vui/a;->a:Lcom/unisound/client/SpeechUnderstanderListener;

    const-string v0, "SpeechUnderstanderManager"

    const-string v1, "appKey = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/unisound/vui/a;->c:Landroid/content/Context;

    new-instance v0, Lcom/unisound/client/SpeechUnderstander;

    invoke-direct {v0, p1, p2, p3}, Lcom/unisound/client/SpeechUnderstander;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    iget-object v1, p0, Lcom/unisound/vui/a;->a:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-virtual {v0, v1}, Lcom/unisound/client/SpeechUnderstander;->setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/vui/a;)Lcom/unisound/vui/b;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->d:Lcom/unisound/vui/b;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/SpeechUnderstander;->release(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/SpeechUnderstander;->loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/SpeechUnderstander;->insertVocab(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechUnderstander;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechUnderstander;->setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0}, Lcom/unisound/client/SpeechUnderstander;->stop()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 3

    const/16 v0, 0x422

    if-ne p1, v0, :cond_0

    const-string v0, "SpeechUnderstanderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/SpeechUnderstander;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/unisound/vui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/a;->d:Lcom/unisound/vui/b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechUnderstander;->init(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechUnderstander;->uploadUserData(Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/client/SpeechUnderstander;->loadGrammar(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechUnderstander;->setWakeupWord(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0}, Lcom/unisound/client/SpeechUnderstander;->cancel()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechUnderstander;->start(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0, p1}, Lcom/unisound/client/SpeechUnderstander;->unloadGrammar(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/a;->b:Lcom/unisound/client/SpeechUnderstander;

    invoke-virtual {v0}, Lcom/unisound/client/SpeechUnderstander;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
