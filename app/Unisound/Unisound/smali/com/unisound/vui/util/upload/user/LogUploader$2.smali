.class Lcom/unisound/vui/util/upload/user/LogUploader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/util/upload/user/LogUploader;->deleteCrashFile()V
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
    iput-object p1, p0, Lcom/unisound/vui/util/upload/user/LogUploader$2;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader$2;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$200(Lcom/unisound/vui/util/upload/user/LogUploader;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    return-void
.end method
