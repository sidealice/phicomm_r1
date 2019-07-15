.class Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LoginCloudActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;Lcom/phicomm/speaker/activity/LoginCloudActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$2;->b:Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->tv_forget_pwd()V

    return-void
.end method
