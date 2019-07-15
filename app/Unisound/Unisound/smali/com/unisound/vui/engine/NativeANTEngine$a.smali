.class final Lcom/unisound/vui/engine/NativeANTEngine$a;
.super Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/NativeANTEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/engine/NativeANTEngine;


# direct methods
.method private constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;-><init>(Lcom/unisound/vui/engine/AbstractANTEngine;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/NativeANTEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/vui/engine/NativeANTEngine$a;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;)V

    return-void
.end method


# virtual methods
.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/vui/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "grammarTag"    # Ljava/lang/String;
    .param p2, "jsgfPath"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadGrammar(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "grammarName"    # Ljava/lang/String;
    .param p2, "grammarPath"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public release(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "dataName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/a;->a(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->e(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public setASROption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public setMainTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->g(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getLocalConfiguration()Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/engine/NativeANTEngine;->a(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->g(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->contentTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0, p1}, Lcom/unisound/vui/engine/NativeANTEngine;->a(Lcom/unisound/vui/engine/NativeANTEngine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->OPT_SET_FIX_RESULT_NLU:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->g(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->h(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->getLocalRecognition(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->getLocalNluPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setNLUOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->f(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    return-void
.end method

.method public setTTSOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->e(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/c;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public unloadGrammar(Ljava/lang/String;)I
    .locals 1
    .param p1, "grammarTag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/vui/a;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public uploadUserData(Ljava/util/Map;)V
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

    .prologue
    .local p1, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$a;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/vui/a;->a(Ljava/util/Map;)V

    return-void
.end method
