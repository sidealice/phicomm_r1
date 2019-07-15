.class final Lcom/unisound/lib/utils/PermissionUtils$2;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/utils/PermissionUtils;->requestMultiPermissions(Landroid/app/Activity;Ljava/util/List;Lcom/unisound/lib/utils/PermissionUtils$PermissionGrant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$shouldRationalePermissionsList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/unisound/lib/utils/PermissionUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unisound/lib/utils/PermissionUtils$2;->val$shouldRationalePermissionsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/unisound/lib/utils/PermissionUtils$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/unisound/lib/utils/PermissionUtils$2;->val$shouldRationalePermissionsList:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/lib/utils/PermissionUtils$2;->val$shouldRationalePermissionsList:Ljava/util/List;

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 237
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 239
    invoke-static {}, Lcom/unisound/lib/utils/PermissionUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "showMessageOKCancel requestPermissions"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
