.class Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CustomWakeNameActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->clearInput()V

    return-void
.end method
