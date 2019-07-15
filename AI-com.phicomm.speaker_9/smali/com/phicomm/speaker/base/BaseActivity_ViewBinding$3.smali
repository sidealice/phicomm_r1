.class Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BaseActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/base/BaseActivity;

.field final synthetic b:Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;Lcom/phicomm/speaker/base/BaseActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$3;->b:Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/base/BaseActivity;->tv_back()V

    return-void
.end method
