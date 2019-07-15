.class Lcom/phicomm/speaker/activity/MyFavoriteActivity$1;
.super Lcom/phicomm/speaker/presenter/b/i;
.source "MyFavoriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/MyFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity$1;->a:Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity$1;->a:Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a(Lcom/phicomm/speaker/activity/MyFavoriteActivity;)Lcom/phicomm/speaker/presenter/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->c(Z)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity$1;->a:Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->a(Lcom/phicomm/speaker/activity/MyFavoriteActivity;)Lcom/phicomm/speaker/presenter/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->b(Z)V

    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
