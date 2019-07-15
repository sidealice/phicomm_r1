.class public interface abstract Lcom/phicomm/speaker/player/swig/ShairportConstants;
.super Ljava/lang/Object;
.source "ShairportConstants.java"


# static fields
.field public static final META_MAX_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/phicomm/speaker/player/swig/ShairportJNI;->META_MAX_LEN_get()I

    move-result v0

    sput v0, Lcom/phicomm/speaker/player/swig/ShairportConstants;->META_MAX_LEN:I

    return-void
.end method
