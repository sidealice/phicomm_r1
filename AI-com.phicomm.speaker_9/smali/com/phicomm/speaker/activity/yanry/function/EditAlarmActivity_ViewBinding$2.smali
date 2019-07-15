.class Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditAlarmActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$2;->b:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->selectRingtone()V

    return-void
.end method
