.class Lcom/unisound/vui/util/upload/user/LogUploader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/upload/SimpleRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/upload/user/LogUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/upload/user/LogUploader;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/upload/user/LogUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/util/upload/user/LogUploader;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/upload/user/LogUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-string v0, "LogUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$100(Lcom/unisound/vui/util/upload/user/LogUploader;)Lcom/unisound/vui/util/upload/user/UploaderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/util/upload/user/UploaderListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const-string v0, "LogUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$000(Lcom/unisound/vui/util/upload/user/LogUploader;)V

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$100(Lcom/unisound/vui/util/upload/user/LogUploader;)Lcom/unisound/vui/util/upload/user/UploaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/upload/user/UploaderListener;->onSuccess()V

    return-void
.end method
