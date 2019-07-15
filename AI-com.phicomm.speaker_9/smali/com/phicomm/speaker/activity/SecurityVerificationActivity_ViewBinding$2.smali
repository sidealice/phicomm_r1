.class Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SecurityVerificationActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding;Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding$2;->b:Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->tv_next_step()V

    return-void
.end method
