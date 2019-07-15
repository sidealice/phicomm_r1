.class public final enum Lcom/ut/mini/UTPageStatus;
.super Ljava/lang/Enum;
.source "UTPageStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ut/mini/UTPageStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

.field private static final synthetic a:[Lcom/ut/mini/UTPageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/ut/mini/UTPageStatus;

    const-string v1, "UT_H5_IN_WebView"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ut/mini/UTPageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lcom/ut/mini/UTPageStatus;

    sget-object v1, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ut/mini/UTPageStatus;->a:[Lcom/ut/mini/UTPageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ut/mini/UTPageStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/ut/mini/UTPageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ut/mini/UTPageStatus;

    return-object p0
.end method

.method public static values()[Lcom/ut/mini/UTPageStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/ut/mini/UTPageStatus;->a:[Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v0}, [Lcom/ut/mini/UTPageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ut/mini/UTPageStatus;

    return-object v0
.end method
