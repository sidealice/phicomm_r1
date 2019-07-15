.class final Lcom/unisound/vui/util/ConfigUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/common/network/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/util/ConfigUtils;->downLoadConfig(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/common/network/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-string v0, "ConfigUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadConfig error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/util/ConfigUtils$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    const-string v0, "ConfigUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadConfig res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unisound/vui/util/upload/ReqDataUtils;->decoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downLoadConfig response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;

    invoke-virtual {v0}, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->getProcessStatus()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->getConfigFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/ConfigUtils;->access$002(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ConfigUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downLoadConfig configFileUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unisound/vui/util/ConfigUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/unisound/vui/common/network/e;->a()Lcom/unisound/vui/common/network/e;

    move-result-object v0

    const-string v1, "ConfigUtils"

    invoke-static {}, Lcom/unisound/vui/util/ConfigUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/unisound/vui/util/ConfigUtils$1$1;

    invoke-direct {v3, p0}, Lcom/unisound/vui/util/ConfigUtils$1$1;-><init>(Lcom/unisound/vui/util/ConfigUtils$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/unisound/vui/common/network/e;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/vui/common/network/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConfigUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downLoadConfig exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
