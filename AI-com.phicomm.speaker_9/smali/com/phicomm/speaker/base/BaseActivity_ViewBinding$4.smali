.class Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$4;
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

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$4;->b:Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$4;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$4;->a:Lcom/phicomm/speaker/base/BaseActivity;

    const-string v1, "doClick"

    const-string v2, "iv_menu"

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2, v3}, Lbutterknife/internal/Utils;->castParam(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->iv_menu(Landroid/widget/ImageView;)V

    return-void
.end method
