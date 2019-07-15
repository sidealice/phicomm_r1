.class public Lcom/phicomm/speaker/adapter/b/b;
.super Ljava/lang/Object;
.source "ChatItemViewFactory.java"


# direct methods
.method public static a(ILandroid/view/ViewGroup;)Lcom/phicomm/speaker/adapter/b/a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 44
    :pswitch_0
    new-instance p0, Lcom/phicomm/speaker/adapter/b/k;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/k;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 41
    :pswitch_1
    new-instance p0, Lcom/phicomm/speaker/adapter/b/g;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/g;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 38
    :pswitch_2
    new-instance p0, Lcom/phicomm/speaker/adapter/b/e;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/e;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 35
    :pswitch_3
    new-instance p0, Lcom/phicomm/speaker/adapter/b/i;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/i;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 32
    :pswitch_4
    new-instance p0, Lcom/phicomm/speaker/adapter/b/h;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/h;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 29
    :pswitch_5
    new-instance p0, Lcom/phicomm/speaker/adapter/b/j;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/j;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 26
    :pswitch_6
    new-instance p0, Lcom/phicomm/speaker/adapter/b/l;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/l;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 23
    :pswitch_7
    new-instance p0, Lcom/phicomm/speaker/adapter/b/f;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/f;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 20
    :pswitch_8
    new-instance p0, Lcom/phicomm/speaker/adapter/b/m;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/m;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 47
    :pswitch_9
    new-instance p0, Lcom/phicomm/speaker/adapter/b/d;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/d;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 50
    :pswitch_a
    new-instance p0, Lcom/phicomm/speaker/adapter/b/c;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/c;-><init>(Landroid/view/ViewGroup;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4e26

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e35

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "0"

    goto :goto_0

    :pswitch_0
    const-string p0, "8"

    goto :goto_0

    :pswitch_1
    const-string p0, "6"

    goto :goto_0

    :pswitch_2
    const-string p0, "5"

    goto :goto_0

    :pswitch_3
    const-string p0, "9"

    goto :goto_0

    :pswitch_4
    const-string p0, "2"

    goto :goto_0

    :pswitch_5
    const-string p0, "3"

    goto :goto_0

    :cond_0
    const-string p0, "7"

    goto :goto_0

    :cond_1
    const-string p0, "10"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e2f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
