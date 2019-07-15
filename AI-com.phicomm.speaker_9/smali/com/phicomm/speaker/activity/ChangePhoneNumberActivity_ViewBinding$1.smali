.class Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ChangePhoneNumberActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->tv_get_verification_code()V

    return-void
.end method
