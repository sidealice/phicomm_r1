.class Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$7;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditCalendarActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$7;->b:Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$7;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$7;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->back()V

    return-void
.end method
