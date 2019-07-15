.class final Lcom/unisound/lib/utils/PermissionUtils$5;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/utils/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGranted(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 401
    :pswitch_0
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_READ_SMS"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :pswitch_4
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_5
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_CAMERA"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_6
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_CALL_PHONE"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_7
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :pswitch_8
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_GET_ACCOUNTS"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :pswitch_9
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Result Permission Grant CODE_RECORD_AUDIO"

    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
