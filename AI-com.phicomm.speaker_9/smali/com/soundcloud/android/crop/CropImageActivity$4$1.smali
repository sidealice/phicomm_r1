.class Lcom/soundcloud/android/crop/CropImageActivity$4$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/CropImageActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soundcloud/android/crop/CropImageActivity$4;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity$4;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$4$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$4;

    iput-object p2, p0, Lcom/soundcloud/android/crop/CropImageActivity$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$4$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$4;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$4;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$4$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$4;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$4;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->center()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$4$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
