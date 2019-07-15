.class Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ConfigNetActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->tv_config_net_cancel()V

    return-void
.end method
