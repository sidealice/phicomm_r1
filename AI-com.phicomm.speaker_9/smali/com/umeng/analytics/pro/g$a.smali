.class public final enum Lcom/umeng/analytics/pro/g$a;
.super Ljava/lang/Enum;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/pro/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/pro/g$a;

.field public static final enum b:Lcom/umeng/analytics/pro/g$a;

.field public static final enum c:Lcom/umeng/analytics/pro/g$a;

.field public static final enum d:Lcom/umeng/analytics/pro/g$a;

.field public static final enum e:Lcom/umeng/analytics/pro/g$a;

.field private static final synthetic f:[Lcom/umeng/analytics/pro/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1223
    new-instance v0, Lcom/umeng/analytics/pro/g$a;

    const-string v1, "AUTOPAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    .line 1225
    new-instance v0, Lcom/umeng/analytics/pro/g$a;

    const-string v1, "PAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/umeng/analytics/pro/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/g$a;->b:Lcom/umeng/analytics/pro/g$a;

    .line 1227
    new-instance v0, Lcom/umeng/analytics/pro/g$a;

    const-string v1, "BEGIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/umeng/analytics/pro/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    .line 1229
    new-instance v0, Lcom/umeng/analytics/pro/g$a;

    const-string v1, "END"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/umeng/analytics/pro/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    .line 1231
    new-instance v0, Lcom/umeng/analytics/pro/g$a;

    const-string v1, "NEWSESSION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/umeng/analytics/pro/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/g$a;->e:Lcom/umeng/analytics/pro/g$a;

    const/4 v0, 0x5

    .line 1221
    new-array v0, v0, [Lcom/umeng/analytics/pro/g$a;

    sget-object v1, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/pro/g$a;->b:Lcom/umeng/analytics/pro/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/pro/g$a;->e:Lcom/umeng/analytics/pro/g$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/umeng/analytics/pro/g$a;->f:[Lcom/umeng/analytics/pro/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/pro/g$a;
    .locals 1

    .line 1221
    const-class v0, Lcom/umeng/analytics/pro/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/pro/g$a;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/pro/g$a;
    .locals 1

    .line 1221
    sget-object v0, Lcom/umeng/analytics/pro/g$a;->f:[Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {v0}, [Lcom/umeng/analytics/pro/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/pro/g$a;

    return-object v0
.end method
