.class public Lcom/chad/library/adapter/base/util/TouchEventUtil;
.super Ljava/lang/Object;
.source "TouchEventUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTouchAction(I)Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknow:id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "ACTION_OUTSIDE"

    goto :goto_0

    :pswitch_1
    const-string v0, "ACTION_CANCEL"

    goto :goto_0

    :pswitch_2
    const-string v0, "ACTION_MOVE"

    goto :goto_0

    :pswitch_3
    const-string v0, "ACTION_UP"

    goto :goto_0

    :pswitch_4
    const-string v0, "ACTION_DOWN"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
