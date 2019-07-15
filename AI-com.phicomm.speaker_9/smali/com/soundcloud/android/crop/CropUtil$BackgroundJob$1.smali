.class Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;
.super Ljava/lang/Object;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;->this$0:Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;->this$0:Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->access$000(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)Lcom/soundcloud/android/crop/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;->this$0:Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/MonitoredActivity;->removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V

    .line 178
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;->this$0:Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->access$100(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob$1;->this$0:Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;->access$100(Lcom/soundcloud/android/crop/CropUtil$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
