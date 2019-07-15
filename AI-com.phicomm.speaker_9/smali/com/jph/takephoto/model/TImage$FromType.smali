.class public final enum Lcom/jph/takephoto/model/TImage$FromType;
.super Ljava/lang/Enum;
.source "TImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/model/TImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jph/takephoto/model/TImage$FromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jph/takephoto/model/TImage$FromType;

.field public static final enum CAMERA:Lcom/jph/takephoto/model/TImage$FromType;

.field public static final enum OTHER:Lcom/jph/takephoto/model/TImage$FromType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Lcom/jph/takephoto/model/TImage$FromType;

    const-string v1, "CAMERA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jph/takephoto/model/TImage$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jph/takephoto/model/TImage$FromType;->CAMERA:Lcom/jph/takephoto/model/TImage$FromType;

    new-instance v0, Lcom/jph/takephoto/model/TImage$FromType;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/jph/takephoto/model/TImage$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jph/takephoto/model/TImage$FromType;->OTHER:Lcom/jph/takephoto/model/TImage$FromType;

    const/4 v0, 0x2

    .line 74
    new-array v0, v0, [Lcom/jph/takephoto/model/TImage$FromType;

    sget-object v1, Lcom/jph/takephoto/model/TImage$FromType;->CAMERA:Lcom/jph/takephoto/model/TImage$FromType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jph/takephoto/model/TImage$FromType;->OTHER:Lcom/jph/takephoto/model/TImage$FromType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jph/takephoto/model/TImage$FromType;->$VALUES:[Lcom/jph/takephoto/model/TImage$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jph/takephoto/model/TImage$FromType;
    .locals 1

    .line 74
    const-class v0, Lcom/jph/takephoto/model/TImage$FromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jph/takephoto/model/TImage$FromType;

    return-object p0
.end method

.method public static values()[Lcom/jph/takephoto/model/TImage$FromType;
    .locals 1

    .line 74
    sget-object v0, Lcom/jph/takephoto/model/TImage$FromType;->$VALUES:[Lcom/jph/takephoto/model/TImage$FromType;

    invoke-virtual {v0}, [Lcom/jph/takephoto/model/TImage$FromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jph/takephoto/model/TImage$FromType;

    return-object v0
.end method
