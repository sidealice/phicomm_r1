.class Lcom/soundcloud/android/crop/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundcloud/android/crop/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/soundcloud/android/crop/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;Lcom/soundcloud/android/crop/RotateBitmap;Z)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;->this$0:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    iput-boolean p3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;->this$0:Lcom/soundcloud/android/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/soundcloud/android/crop/RotateBitmap;

    iget-boolean v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    return-void
.end method
