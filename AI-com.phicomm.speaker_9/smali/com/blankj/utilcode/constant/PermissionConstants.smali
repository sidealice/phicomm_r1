.class public final Lcom/blankj/utilcode/constant/PermissionConstants;
.super Ljava/lang/Object;
.source "PermissionConstants.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/constant/PermissionConstants$Permission;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    .line 33
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.WRITE_CALENDAR"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/blankj/utilcode/constant/PermissionConstants;->a:[Ljava/lang/String;

    .line 36
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    sput-object v1, Lcom/blankj/utilcode/constant/PermissionConstants;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 39
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "android.permission.READ_CONTACTS"

    aput-object v5, v2, v3

    const-string v5, "android.permission.WRITE_CONTACTS"

    aput-object v5, v2, v4

    const-string v5, "android.permission.GET_ACCOUNTS"

    aput-object v5, v2, v0

    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->c:[Ljava/lang/String;

    .line 42
    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v2, v3

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v2, v4

    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->d:[Ljava/lang/String;

    .line 45
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v2, v3

    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->e:[Ljava/lang/String;

    const/16 v2, 0x9

    .line 48
    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v2, v3

    const-string v5, "android.permission.READ_PHONE_NUMBERS"

    aput-object v5, v2, v4

    const-string v5, "android.permission.CALL_PHONE"

    aput-object v5, v2, v0

    const-string v5, "android.permission.ANSWER_PHONE_CALLS"

    aput-object v5, v2, v1

    const-string v5, "android.permission.READ_CALL_LOG"

    const/4 v6, 0x4

    aput-object v5, v2, v6

    const-string v5, "android.permission.WRITE_CALL_LOG"

    const/4 v7, 0x5

    aput-object v5, v2, v7

    const-string v5, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/4 v8, 0x6

    aput-object v5, v2, v8

    const-string v5, "android.permission.USE_SIP"

    const/4 v8, 0x7

    aput-object v5, v2, v8

    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    const/16 v8, 0x8

    aput-object v5, v2, v8

    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->f:[Ljava/lang/String;

    .line 53
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "android.permission.BODY_SENSORS"

    aput-object v5, v2, v3

    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->g:[Ljava/lang/String;

    .line 56
    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "android.permission.SEND_SMS"

    aput-object v5, v2, v3

    const-string v5, "android.permission.RECEIVE_SMS"

    aput-object v5, v2, v4

    const-string v5, "android.permission.READ_SMS"

    aput-object v5, v2, v0

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v5, v2, v1

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v2, v6

    sput-object v2, Lcom/blankj/utilcode/constant/PermissionConstants;->h:[Ljava/lang/String;

    .line 60
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/blankj/utilcode/constant/PermissionConstants;->i:[Ljava/lang/String;

    return-void
.end method
