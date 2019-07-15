.class Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->onEngineInitDone(Lcom/unisound/vui/engine/ANTEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/engine/ANTEngine;

.field final synthetic b:Lcom/unisound/vui/bootstrap/NativeBootstrap$a;


# direct methods
.method constructor <init>(Lcom/unisound/vui/bootstrap/NativeBootstrap$a;Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->b:Lcom/unisound/vui/bootstrap/NativeBootstrap$a;

    iput-object p2, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)V
    .locals 5

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/engine/ANTEngineConfig;->setLocalConfiguration(Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)Lcom/unisound/vui/engine/ANTEngineConfig;

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->b:Lcom/unisound/vui/bootstrap/NativeBootstrap$a;

    iget-object v0, v0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->mainTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;->getLocalRecognition(Ljava/lang/String;)Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->getGrammerPath()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration$LocalRecognition;->getCompileJsgfPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->b:Lcom/unisound/vui/bootstrap/NativeBootstrap$a;

    iget-object v3, v3, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {v3}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->mainVocab()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->insertVocab(Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v1, "NativeBootstrap"

    const-string v2, "loadGrammar errro %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngineConfig;->setMainTag(Ljava/lang/String;)Lcom/unisound/vui/engine/ANTEngineConfig;

    iget-object v0, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->a:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->b:Lcom/unisound/vui/bootstrap/NativeBootstrap$a;

    iget-object v1, v1, Lcom/unisound/vui/bootstrap/NativeBootstrap$a;->a:Lcom/unisound/vui/bootstrap/NativeBootstrap;

    invoke-virtual {v1}, Lcom/unisound/vui/bootstrap/NativeBootstrap;->mainVocab()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->setMainVocab(Ljava/util/Map;)Lcom/unisound/vui/engine/ANTEngineConfig;

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/bootstrap/NativeBootstrap$a$1;->a(Lcom/unisound/vui/bootstrap/ANTELocalConfiguration;)V

    return-void
.end method
