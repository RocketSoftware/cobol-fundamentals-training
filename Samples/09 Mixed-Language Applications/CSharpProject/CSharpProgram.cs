/*
 * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.
 */

using System;
using CobolBird;

namespace MixedLanguageApplication
{
    class CSharpProgram
    {
        static void Main()
        {
            Console.WriteLine("Entering C# program...");

            Bird bird = new Bird
            {
                CommonName = "European Robin",
                ScientificName = "Erithacus rubecula",
                Length_Min = 12,
                Length_Max = 14,
                Wingspan_Min = 20,
                Wingspan_Max = 22,
                Weight_Min = 14,
                Weight_Max = 21,
                UkBreedingPopulation = 7350000
            };

            CobolProgram cobolProgram = new CobolProgram();
            Console.WriteLine("Leaving C# program...");
            Console.WriteLine("Entering COBOL program...");
            _ = cobolProgram.CobolProgram(bird);
            Console.WriteLine("Leaving COBOL program...");
        }
    }
}
