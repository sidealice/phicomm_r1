.class public final enum Lcom/jph/takephoto/model/TExceptionType;
.super Ljava/lang/Enum;
.source "TExceptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jph/takephoto/model/TExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_NOT_IMAGE:Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_CAMERA:Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_FIND:Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_MATCH_CROP_INTENT:Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_NO_MATCH_PICK_INTENT:Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_URI_NULL:Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_URI_PARSE_FAIL:Lcom/jph/takephoto/model/TExceptionType;

.field public static final enum TYPE_WRITE_FAIL:Lcom/jph/takephoto/model/TExceptionType;


# instance fields
.field stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_NOT_IMAGE"

    const-string v2, "\u9009\u62e9\u7684\u6587\u4ef6\u4e0d\u662f\u56fe\u7247"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NOT_IMAGE:Lcom/jph/takephoto/model/TExceptionType;

    .line 9
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_WRITE_FAIL"

    const-string v2, "\u4fdd\u5b58\u9009\u62e9\u7684\u7684\u6587\u4ef6\u5931\u8d25"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_WRITE_FAIL:Lcom/jph/takephoto/model/TExceptionType;

    .line 10
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_URI_NULL"

    const-string v2, "\u6240\u9009\u7167\u7247\u7684Uri \u4e3anull"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_URI_NULL:Lcom/jph/takephoto/model/TExceptionType;

    .line 11
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_URI_PARSE_FAIL"

    const-string v2, "\u4eceUri\u4e2d\u83b7\u53d6\u6587\u4ef6\u8def\u5f84\u5931\u8d25"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_URI_PARSE_FAIL:Lcom/jph/takephoto/model/TExceptionType;

    .line 12
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_NO_MATCH_PICK_INTENT"

    const-string v2, "\u6ca1\u6709\u5339\u914d\u5230\u9009\u62e9\u56fe\u7247\u7684Intent"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_MATCH_PICK_INTENT:Lcom/jph/takephoto/model/TExceptionType;

    .line 13
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_NO_MATCH_CROP_INTENT"

    const-string v2, "\u6ca1\u6709\u5339\u914d\u5230\u88c1\u5207\u56fe\u7247\u7684Intent"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_MATCH_CROP_INTENT:Lcom/jph/takephoto/model/TExceptionType;

    .line 14
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_NO_CAMERA"

    const-string v2, "\u6ca1\u6709\u76f8\u673a"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_CAMERA:Lcom/jph/takephoto/model/TExceptionType;

    .line 15
    new-instance v0, Lcom/jph/takephoto/model/TExceptionType;

    const-string v1, "TYPE_NO_FIND"

    const-string v2, "\u9009\u62e9\u7684\u6587\u4ef6\u6ca1\u6709\u627e\u5230"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/jph/takephoto/model/TExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_FIND:Lcom/jph/takephoto/model/TExceptionType;

    const/16 v0, 0x8

    .line 7
    new-array v0, v0, [Lcom/jph/takephoto/model/TExceptionType;

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NOT_IMAGE:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_WRITE_FAIL:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_URI_NULL:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_URI_PARSE_FAIL:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_MATCH_PICK_INTENT:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_MATCH_CROP_INTENT:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_CAMERA:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/jph/takephoto/model/TExceptionType;->TYPE_NO_FIND:Lcom/jph/takephoto/model/TExceptionType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/jph/takephoto/model/TExceptionType;->$VALUES:[Lcom/jph/takephoto/model/TExceptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/jph/takephoto/model/TExceptionType;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jph/takephoto/model/TExceptionType;
    .locals 1

    .line 7
    const-class v0, Lcom/jph/takephoto/model/TExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jph/takephoto/model/TExceptionType;

    return-object p0
.end method

.method public static values()[Lcom/jph/takephoto/model/TExceptionType;
    .locals 1

    .line 7
    sget-object v0, Lcom/jph/takephoto/model/TExceptionType;->$VALUES:[Lcom/jph/takephoto/model/TExceptionType;

    invoke-virtual {v0}, [Lcom/jph/takephoto/model/TExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jph/takephoto/model/TExceptionType;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/jph/takephoto/model/TExceptionType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
