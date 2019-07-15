.class Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/upload/SimpleRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->access$200(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;)Lcom/unisound/vui/util/upload/user/UploaderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/util/upload/user/UploaderListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;

    invoke-static {v0, p1}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->access$000(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;

    const-string v1, "processStatus"

    invoke-static {v0, p1, v1}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->access$100(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader$1;->this$0:Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;->access$200(Lcom/unisound/vui/util/upload/user/IndividualSettingUploader;)Lcom/unisound/vui/util/upload/user/UploaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/upload/user/UploaderListener;->onSuccess()V

    :cond_0
    return-void
.end method
