.class Lcom/jph/takephoto/compress/CompressImageUtil$2;
.super Ljava/lang/Object;
.source "CompressImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jph/takephoto/compress/CompressImageUtil;->sendMsg(ZLjava/lang/String;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jph/takephoto/compress/CompressImageUtil;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$isSuccess:Z

.field final synthetic val$listener:Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jph/takephoto/compress/CompressImageUtil;ZLcom/jph/takephoto/compress/CompressImageUtil$CompressListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->this$0:Lcom/jph/takephoto/compress/CompressImageUtil;

    iput-boolean p2, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$isSuccess:Z

    iput-object p3, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$listener:Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;

    iput-object p4, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$imagePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$isSuccess:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$listener:Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;->onCompressSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$listener:Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;

    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$imagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jph/takephoto/compress/CompressImageUtil$2;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;->onCompressFailed(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
