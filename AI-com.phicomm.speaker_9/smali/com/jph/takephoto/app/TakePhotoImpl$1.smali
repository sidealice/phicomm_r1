.class Lcom/jph/takephoto/app/TakePhotoImpl$1;
.super Ljava/lang/Object;
.source "TakePhotoImpl.java"

# interfaces
.implements Lcom/jph/takephoto/compress/CompressImage$CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jph/takephoto/app/TakePhotoImpl;->takeResult(Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

.field final synthetic val$message:[Ljava/lang/String;

.field final synthetic val$result:Lcom/jph/takephoto/model/TResult;


# direct methods
.method constructor <init>(Lcom/jph/takephoto/app/TakePhotoImpl;Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    iput-object p2, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->val$result:Lcom/jph/takephoto/model/TResult;

    iput-object p3, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->val$message:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {v0}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$000(Lcom/jph/takephoto/app/TakePhotoImpl;)Lcom/jph/takephoto/compress/CompressConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jph/takephoto/compress/CompressConfig;->isEnableReserveRaw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {v0, p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$100(Lcom/jph/takephoto/app/TakePhotoImpl;Ljava/util/ArrayList;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lcom/jph/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lcom/jph/takephoto/model/TResult;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {v3}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$400(Lcom/jph/takephoto/app/TakePhotoImpl;)Lcom/jph/takephoto/model/TContextWrap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/jph/takephoto/R$string;->tip_compress_failed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->val$message:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->val$message:[Ljava/lang/String;

    aget-object v5, v5, v6

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    aput-object v5, v4, v6

    aput-object p2, v4, v1

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->val$result:Lcom/jph/takephoto/model/TResult;

    invoke-virtual {v1}, Lcom/jph/takephoto/model/TResult;->getImage()Lcom/jph/takephoto/model/TImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jph/takephoto/model/TImage;->getCompressPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {v0, p1, v2}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$200(Lcom/jph/takephoto/app/TakePhotoImpl;Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$300(Lcom/jph/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$400(Lcom/jph/takephoto/app/TakePhotoImpl;)Lcom/jph/takephoto/model/TContextWrap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 434
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$300(Lcom/jph/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onCompressSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jph/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {v0}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$000(Lcom/jph/takephoto/app/TakePhotoImpl;)Lcom/jph/takephoto/compress/CompressConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jph/takephoto/compress/CompressConfig;->isEnableReserveRaw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {v0, p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$100(Lcom/jph/takephoto/app/TakePhotoImpl;Ljava/util/ArrayList;)V

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    iget-object v0, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->val$result:Lcom/jph/takephoto/model/TResult;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$200(Lcom/jph/takephoto/app/TakePhotoImpl;Lcom/jph/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$300(Lcom/jph/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$400(Lcom/jph/takephoto/app/TakePhotoImpl;)Lcom/jph/takephoto/model/TContextWrap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/jph/takephoto/app/TakePhotoImpl$1;->this$0:Lcom/jph/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lcom/jph/takephoto/app/TakePhotoImpl;->access$300(Lcom/jph/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
