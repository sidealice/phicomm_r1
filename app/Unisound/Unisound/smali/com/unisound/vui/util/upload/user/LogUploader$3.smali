.class Lcom/unisound/vui/util/upload/user/LogUploader$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/util/upload/user/LogUploader;->getCrashLogByte()[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

.field final synthetic val$crashLogByte:[B


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/upload/user/LogUploader;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/util/upload/user/LogUploader;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    iput-object p2, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->val$crashLogByte:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$200(Lcom/unisound/vui/util/upload/user/LogUploader;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->val$crashLogByte:[B

    invoke-static {v1, v0, v2}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$300(Lcom/unisound/vui/util/upload/user/LogUploader;Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
