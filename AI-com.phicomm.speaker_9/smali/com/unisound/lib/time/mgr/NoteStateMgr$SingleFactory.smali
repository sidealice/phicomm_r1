.class final Lcom/unisound/lib/time/mgr/NoteStateMgr$SingleFactory;
.super Ljava/lang/Object;
.source "NoteStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/time/mgr/NoteStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/time/mgr/NoteStateMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/unisound/lib/time/mgr/NoteStateMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/time/mgr/NoteStateMgr;-><init>(Lcom/unisound/lib/time/mgr/NoteStateMgr$1;)V

    sput-object v0, Lcom/unisound/lib/time/mgr/NoteStateMgr$SingleFactory;->instant:Lcom/unisound/lib/time/mgr/NoteStateMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
