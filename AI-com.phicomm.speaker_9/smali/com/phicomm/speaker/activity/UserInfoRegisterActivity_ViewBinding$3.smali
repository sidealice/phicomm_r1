.class Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserInfoRegisterActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$3;->b:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tv_submit()V

    return-void
.end method
