.class Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->crop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity$Cropper;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->access$700(Lcom/soundcloud/android/crop/CropImageActivity$Cropper;)V

    .line 257
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->invalidate()V

    .line 258
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    iget-object v2, v2, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v2}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soundcloud/android/crop/HighlightView;

    invoke-static {v0, v2}, Lcom/soundcloud/android/crop/CropImageActivity;->access$802(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/HighlightView;)Lcom/soundcloud/android/crop/HighlightView;

    .line 260
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper$1;->this$1:Lcom/soundcloud/android/crop/CropImageActivity$Cropper;

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageActivity$Cropper;->this$0:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$800(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/HighlightView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/HighlightView;->setFocus(Z)V

    :cond_0
    return-void
.end method
