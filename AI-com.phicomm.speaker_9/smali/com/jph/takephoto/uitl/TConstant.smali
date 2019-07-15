.class public Lcom/jph/takephoto/uitl/TConstant;
.super Ljava/lang/Object;
.source "TConstant.java"


# static fields
.field public static final PERMISSION_REQUEST_TAKE_PHOTO:I = 0x7d0

.field public static final RC_CROP:I = 0x3e9

.field public static final RC_PICK_MULTIPLE:I = 0x3f0

.field public static final RC_PICK_PICTURE_FROM_CAPTURE:I = 0x3eb

.field public static final RC_PICK_PICTURE_FROM_CAPTURE_CROP:I = 0x3ea

.field public static final RC_PICK_PICTURE_FROM_DOCUMENTS_CROP:I = 0x3ed

.field public static final RC_PICK_PICTURE_FROM_DOCUMENTS_ORIGINAL:I = 0x3ec

.field public static final RC_PICK_PICTURE_FROM_GALLERY_CROP:I = 0x3ef

.field public static final RC_PICK_PICTURE_FROM_GALLERY_ORIGINAL:I = 0x3ee


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFileProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".fileprovider"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
