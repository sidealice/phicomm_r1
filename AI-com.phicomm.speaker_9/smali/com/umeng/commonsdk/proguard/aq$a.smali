.class public Lcom/umeng/commonsdk/proguard/aq$a;
.super Ljava/lang/Object;
.source "TTupleProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/am;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/ay;)Lcom/umeng/commonsdk/proguard/ak;
    .locals 1

    .line 35
    new-instance v0, Lcom/umeng/commonsdk/proguard/aq;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/aq;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    return-object v0
.end method
