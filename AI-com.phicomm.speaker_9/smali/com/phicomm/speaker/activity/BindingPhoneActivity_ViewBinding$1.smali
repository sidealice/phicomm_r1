.class Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BindingPhoneActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/BindingPhoneActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/BindingPhoneActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding;Lcom/phicomm/speaker/activity/BindingPhoneActivity;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/BindingPhoneActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/phicomm/speaker/activity/BindingPhoneActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/BindingPhoneActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/BindingPhoneActivity;->tv_change_phone_number()V

    return-void
.end method
