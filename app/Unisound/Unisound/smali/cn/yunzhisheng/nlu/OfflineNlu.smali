.class public Lcn/yunzhisheng/nlu/OfflineNlu;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "offlinenlujni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/yunzhisheng/nlu/OfflineNlu;->getNluJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/nlu/OfflineNlu;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/yunzhisheng/nlu/OfflineNlu;->loadConf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native clear()V
.end method

.method public native getNluJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native loadConf(Ljava/lang/String;Ljava/lang/String;)I
.end method
