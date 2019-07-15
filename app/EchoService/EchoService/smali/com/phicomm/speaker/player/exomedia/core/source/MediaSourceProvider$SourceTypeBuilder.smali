.class public Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
.super Ljava/lang/Object;
.source "MediaSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceTypeBuilder"
.end annotation


# instance fields
.field public final builder:Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;

.field public final extension:Ljava/lang/String;

.field public final looseComparisonRegex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "looseComparisonRegex"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->builder:Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;

    .line 78
    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->extension:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->looseComparisonRegex:Ljava/lang/String;

    .line 80
    return-void
.end method
