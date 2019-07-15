.class Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditCountdownActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$4;->b:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$4;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$4;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->selectRingtone()V

    return-void
.end method
