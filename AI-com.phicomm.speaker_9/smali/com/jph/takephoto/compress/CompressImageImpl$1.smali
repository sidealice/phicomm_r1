.class Lcom/jph/takephoto/compress/CompressImageImpl$1;
.super Ljava/lang/Object;
.source "CompressImageImpl.java"

# interfaces
.implements Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jph/takephoto/compress/CompressImageImpl;->compress(Lcom/jph/takephoto/model/TImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jph/takephoto/compress/CompressImageImpl;

.field final synthetic val$image:Lcom/jph/takephoto/model/TImage;


# direct methods
.method constructor <init>(Lcom/jph/takephoto/compress/CompressImageImpl;Lcom/jph/takephoto/model/TImage;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/jph/takephoto/compress/CompressImageImpl$1;->this$0:Lcom/jph/takephoto/compress/CompressImageImpl;

    iput-object p2, p0, Lcom/jph/takephoto/compress/CompressImageImpl$1;->val$image:Lcom/jph/takephoto/model/TImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 69
    iget-object p1, p0, Lcom/jph/takephoto/compress/CompressImageImpl$1;->this$0:Lcom/jph/takephoto/compress/CompressImageImpl;

    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageImpl$1;->val$image:Lcom/jph/takephoto/model/TImage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v2, v1}, Lcom/jph/takephoto/compress/CompressImageImpl;->access$000(Lcom/jph/takephoto/compress/CompressImageImpl;Lcom/jph/takephoto/model/TImage;Z[Ljava/lang/String;)V

    return-void
.end method

.method public onCompressSuccess(Ljava/lang/String;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageImpl$1;->val$image:Lcom/jph/takephoto/model/TImage;

    invoke-virtual {v0, p1}, Lcom/jph/takephoto/model/TImage;->setCompressPath(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/jph/takephoto/compress/CompressImageImpl$1;->this$0:Lcom/jph/takephoto/compress/CompressImageImpl;

    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageImpl$1;->val$image:Lcom/jph/takephoto/model/TImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/jph/takephoto/compress/CompressImageImpl;->access$000(Lcom/jph/takephoto/compress/CompressImageImpl;Lcom/jph/takephoto/model/TImage;Z[Ljava/lang/String;)V

    return-void
.end method
