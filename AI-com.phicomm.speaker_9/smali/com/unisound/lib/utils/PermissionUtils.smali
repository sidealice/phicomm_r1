.class public Lcom/unisound/lib/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;
    }
.end annotation


# static fields
.field private static final CODE_ACCESS_COARSE_LOCATION:I = 0x6

.field private static final CODE_ACCESS_FINE_LOCATION:I = 0x5

.field private static final CODE_CALL_PHONE:I = 0x3

.field private static final CODE_CAMERA:I = 0x4

.field private static final CODE_GET_ACCOUNTS:I = 0x1

.field private static final CODE_MULTI_PERMISSION:I = 0x64

.field private static final CODE_READ_EXTERNAL_STORAGE:I = 0x7

.field private static final CODE_READ_PHONE_STATE:I = 0x2

.field private static final CODE_READ_SMS:I = 0x9

.field private static final CODE_RECORD_AUDIO:I = 0x0

.field private static final CODE_WRITE_EXTERNAL_STORAGE:I = 0x8

.field public static final PERMISSION_ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field public static final PERMISSION_ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field public static final PERMISSION_CALL_PHONE:Ljava/lang/String; = "android.permission.CALL_PHONE"

.field public static final PERMISSION_CAMERA:Ljava/lang/String; = "android.permission.CAMERA"

.field public static final PERMISSION_GET_ACCOUNTS:Ljava/lang/String; = "android.permission.GET_ACCOUNTS"

.field public static final PERMISSION_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field public static final PERMISSION_READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final PERMISSION_RECORD_AUDIO:Ljava/lang/String; = "android.permission.RECORD_AUDIO"

.field public static final PERMISSION_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field public static final PERMISSION_WRITE_READ_SMS:Ljava/lang/String; = "android.permission.READ_SMS"

.field private static final TAG:Ljava/lang/String; = "PermissionUtils"

.field public static permissionGrant:Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;

.field private static final requestPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    .line 85
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.GET_ACCOUNTS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_SMS"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/unisound/lib/utils/PermissionUtils;->requestPermissions:[Ljava/lang/String;

    .line 368
    new-instance v0, Lcom/unisound/lib/utils/PermissionUtils$5;

    invoke-direct {v0}, Lcom/unisound/lib/utils/PermissionUtils$5;-><init>()V

    sput-object v0, Lcom/unisound/lib/utils/PermissionUtils;->permissionGrant:Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getNoGrantedPermission(Landroid/app/Activity;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 339
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 340
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    :try_start_0
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 349
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    sget-object v3, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v4, "shouldShowRequestPermissionRationale if"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 352
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 356
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_1
    sget-object v2, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v3, "shouldShowRequestPermissionRationale else"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    sget-object p1, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RuntimeException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private static openSettingActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 315
    new-instance v0, Lcom/unisound/lib/utils/PermissionUtils$4;

    invoke-direct {v0, p0}, Lcom/unisound/lib/utils/PermissionUtils$4;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/PermissionUtils;->showMessageOKCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static requestMultiDefaultPermissions(Landroid/app/Activity;Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V
    .locals 4

    .line 187
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->requestPermissions:[Ljava/lang/String;

    .line 188
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/unisound/lib/utils/PermissionUtils;->getNoGrantedPermission(Landroid/app/Activity;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/unisound/lib/utils/PermissionUtils;->requestPermissions:[Ljava/lang/String;

    .line 190
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/unisound/lib/utils/PermissionUtils;->getNoGrantedPermission(Landroid/app/Activity;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lez v2, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 195
    invoke-static {p0, p1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 197
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string p1, "showMessageOKCancel requestPermissions"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string p1, "should open those permission"

    .line 199
    new-instance v0, Lcom/unisound/lib/utils/PermissionUtils$1;

    invoke-direct {v0, p0, v1}, Lcom/unisound/lib/utils/PermissionUtils$1;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/PermissionUtils;->showMessageOKCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-interface {p1, v3}, Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;->onPermissionGranted(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public static requestMultiPermissions(Landroid/app/Activity;Ljava/util/List;Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 221
    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/PermissionUtils;->getNoGrantedPermission(Landroid/app/Activity;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    invoke-static {p0, p1, v1}, Lcom/unisound/lib/utils/PermissionUtils;->getNoGrantedPermission(Landroid/app/Activity;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    sget-object v1, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMultiPermissions permissionsList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",shouldRationalePermissionsList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lez v1, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 230
    invoke-static {p0, p1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 232
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string p1, "showMessageOKCancel requestPermissions"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string p2, "should open those permission"

    .line 234
    new-instance v0, Lcom/unisound/lib/utils/PermissionUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/unisound/lib/utils/PermissionUtils$2;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {p0, p2, v0}, Lcom/unisound/lib/utils/PermissionUtils;->showMessageOKCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-interface {p2, v2}, Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;->onPermissionGranted(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private static requestMultiResult(Landroid/app/Activity;[Ljava/lang/String;[ILcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 158
    :cond_0
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult permissions length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 162
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 163
    sget-object v3, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permissions: [i]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", permissions[i]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",grantResults[i]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    aget-object v3, p1, v2

    aget v4, p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    aget v3, p2, v2

    if-eqz v3, :cond_1

    .line 167
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 172
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "all permission success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x64

    .line 173
    invoke-interface {p3, p0}, Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;->onPermissionGranted(I)V

    goto :goto_1

    :cond_3
    const-string p1, "those permission need granted!"

    .line 175
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/PermissionUtils;->openSettingActivity(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;ILcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermission requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_4

    .line 119
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->requestPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->requestPermissions:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 128
    :try_start_0
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 135
    sget-object p2, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v1, "ActivityCompat.checkSelfPermission != PackageManager.PERMISSION_GRANTED"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 138
    sget-object p2, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v1, "requestPermission shouldShowRequestPermissionRationale"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/PermissionUtils;->shouldShowRationale(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    sget-object p2, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v1, "requestCameraPermission else"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 142
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p0, p2, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 146
    :cond_3
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string v0, "ActivityCompat.checkSelfPermission ==== PackageManager.PERMISSION_GRANTED"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opened:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisound/lib/utils/PermissionUtils;->requestPermissions:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-interface {p2, p1}, Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;->onPermissionGranted(I)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 130
    sget-object p1, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RuntimeException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_4
    :goto_1
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestPermission illegal requestCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static requestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[ILcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPermissionsResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 287
    invoke-static {p0, p2, p3, p4}, Lcom/unisound/lib/utils/PermissionUtils;->requestMultiResult(Landroid/app/Activity;[Ljava/lang/String;[ILcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V

    return-void

    :cond_1
    if-ltz p1, :cond_4

    .line 291
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->requestPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    goto :goto_1

    .line 296
    :cond_2
    sget-object v0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",permissions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",grantResults:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",length:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    array-length p2, p3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_3

    .line 301
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string p2, "onRequestPermissionsResult PERMISSION_GRANTED"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-interface {p4, p1}, Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;->onPermissionGranted(I)V

    goto :goto_0

    .line 306
    :cond_3
    sget-object p2, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    const-string p3, "onRequestPermissionsResult PERMISSION NOT GRANTED"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/unisound/lib/connect/R$array;->permissions:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 309
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Result"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/unisound/lib/utils/PermissionUtils;->openSettingActivity(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 292
    :cond_4
    :goto_1
    sget-object p0, Lcom/unisound/lib/utils/PermissionUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "requestPermissionsResult illegal requestCode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static shouldShowRationale(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/unisound/lib/connect/R$array;->permissions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rationale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/unisound/lib/utils/PermissionUtils$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/unisound/lib/utils/PermissionUtils$3;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-static {p0, v0, v1}, Lcom/unisound/lib/utils/PermissionUtils;->showMessageOKCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static showMessageOKCancel(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    .line 263
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 p2, 0x0

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
