.class Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PersonalInformationActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$3;->b:Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->tv_nickname()V

    return-void
.end method
