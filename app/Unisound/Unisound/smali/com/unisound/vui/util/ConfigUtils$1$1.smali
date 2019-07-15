.class Lcom/unisound/vui/util/ConfigUtils$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/common/network/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/util/ConfigUtils$1;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/common/network/d",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/ConfigUtils$1;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/ConfigUtils$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/util/ConfigUtils$1;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/ConfigUtils$1$1;->this$0:Lcom/unisound/vui/util/ConfigUtils$1;

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

    const-string v2, "write onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/unisound/vui/util/ConfigUtils$1$1;->onResponse([B)V

    return-void
.end method

.method public onResponse([B)V
    .locals 2
    .param p1, "response"    # [B

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/unisound/vui/util/ConfigUtils;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {}, Lcom/unisound/vui/util/ConfigUtils;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/unisound/vui/common/file/FileHelper;->writeDataToFile(Ljava/lang/String;[B)V

    const-string v0, "ConfigUtils"

    const-string v1, "write success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
