.class Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainTestActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/phicomm/speaker/device/ui/MainTestActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;

.field final synthetic val$target:Lcom/phicomm/speaker/device/ui/MainTestActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;Lcom/phicomm/speaker/device/ui/MainTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;

    .prologue
    .line 54
    .local p0, "this":Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;, "Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;"
    iput-object p1, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;->this$0:Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;

    iput-object p2, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;->val$target:Lcom/phicomm/speaker/device/ui/MainTestActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 58
    .local p0, "this":Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;, "Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;"
    iget-object v0, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;->val$target:Lcom/phicomm/speaker/device/ui/MainTestActivity;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/device/ui/MainTestActivity;->onClick(Landroid/view/View;)V

    .line 59
    return-void
.end method
