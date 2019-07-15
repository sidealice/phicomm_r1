.class final Lcom/unisound/lib/utils/PermissionUtils$3;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/utils/PermissionUtils;->shouldShowRationale(Landroid/app/Activity;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I

.field final synthetic val$requestPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/unisound/lib/utils/PermissionUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unisound/lib/utils/PermissionUtils$3;->val$requestPermission:Ljava/lang/String;

    iput p3, p0, Lcom/unisound/lib/utils/PermissionUtils$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 253
    iget-object p1, p0, Lcom/unisound/lib/utils/PermissionUtils$3;->val$activity:Landroid/app/Activity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/lib/utils/PermissionUtils$3;->val$requestPermission:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget v0, p0, Lcom/unisound/lib/utils/PermissionUtils$3;->val$requestCode:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 255
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showMessageOKCancel requestPermissions:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unisound/lib/utils/PermissionUtils$3;->val$requestPermission:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
