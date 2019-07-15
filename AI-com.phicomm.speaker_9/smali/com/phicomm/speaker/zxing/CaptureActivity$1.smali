.class Lcom/phicomm/speaker/zxing/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/zxing/CaptureActivity;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/zxing/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/zxing/CaptureActivity;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity$1;->a:Lcom/phicomm/speaker/zxing/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity$1;->a:Lcom/phicomm/speaker/zxing/CaptureActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->a(Lcom/phicomm/speaker/zxing/CaptureActivity;)Lcom/phicomm/speaker/zxing/ViewfinderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity$1;->a:Lcom/phicomm/speaker/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity$1;->a:Lcom/phicomm/speaker/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->finish()V

    :cond_1
    return-void
.end method
