.class Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AppUpdateDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;-><init>(Lcom/phicomm/speaker/views/AppUpdateDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/AppUpdateDialog;

.field final synthetic b:Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;Lcom/phicomm/speaker/views/AppUpdateDialog;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$2;->b:Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$2;->a:Lcom/phicomm/speaker/views/AppUpdateDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$2;->a:Lcom/phicomm/speaker/views/AppUpdateDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/AppUpdateDialog;->tv_download()V

    return-void
.end method
